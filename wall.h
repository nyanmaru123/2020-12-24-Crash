//=============================================================================
//
// 壁処理 [wall.h]
// Author : masayasu wakita
//
//=============================================================================
#ifndef _WALL_H_
#define _WALL_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"
#include "scene.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define WALL_DEPTH_FIELD	50							// 奥行き
#define WALL_WIDE_FIELD 1								// 幅
#define SIZE		50.0f								// サイズ

struct RAY //レイ
{
	D3DXVECTOR3 vPoint[2];
	D3DXVECTOR3 vDirection;
	D3DXVECTOR3 vPos;
	FLOAT fYaw;

	RAY()
	{
		ZeroMemory(this, sizeof(RAY));
	}
};

struct POLYGON //平面（平面と言っても、無限遠平面上の3頂点を持っているに過ぎない）
{
	D3DXVECTOR3 vPoint[3];
	POLYGON()
	{
		ZeroMemory(this, sizeof(POLYGON));
	}
};

//=============================================================================
// クラス定義
//=============================================================================
class CMeshWall : public CScene
{
public:
	CMeshWall(PRIORITY obj);														// コンストラクタ
	~CMeshWall();																	// デストラクタ
	HRESULT Init(void);																// 初期化処理
	void Uninit(void);																// 開放処理
	void Update(void);																// 更新処理
	void Draw(void);																// 描画処理

	static CMeshWall *Create(void);													// クリエイト処理
	static HRESULT Load(void);														// ロード処理

	static void LoadWall(char *add, bool bDebug);									// 地面の高さ読み込み
	bool GetWallHit(CScene *pTarget, D3DXVECTOR3 &nol);								// ポリゴンの高さを求める
	bool GetWallTest(CScene *pTarget, D3DXVECTOR3 &nol, D3DXVECTOR3 &rot);

	static bool SphereModel(D3DXVECTOR3 C1, D3DXVECTOR3 C2, float R1);				// X軸とZ軸の当たり判定
	bool CollisionRange(D3DXVECTOR3 pos);											// 自分の範囲内にいるかどうか
	bool CollisionRangeToCircle(D3DXVECTOR3 pos, float fRadius);					// 円が自分の範囲内にいるかどうか
	bool CollisionCircle(D3DXVECTOR3 pos, float fRadius);							// 円と点の当たり判定
	void CalculationNormalize(void);												// 法線の計算

	void SetColor(const D3DXCOLOR &col) { m_col = col; }							// 地面の色を設定

	void SetDebugRand(const bool &bValue) { m_bDebug = bValue; }					// デバッグ用フラグの設定
	bool GetDebugRand(void) { return m_bDebug; }									// デバッグ用フラグの取得

	void SetCalculation(const bool &bValue) { m_bCalculation = bValue; }			// 起伏計算フラグの設定
	const bool &GetCalculation(void) { return m_bCalculation; }						// 起伏計算フラグの取得

	static void CreateRand(const int &nWide, const int &nDepth, const D3DXVECTOR3 &createPos);

	void OnTriggerEnter(CCollider *col) {};
	void OnCollisionEnter(CCollider *col) {};
	void ShowInspector(void);

	void MakeVertex(FILE *pFile, bool bDebug);										// 頂点情報の作成

	void SaveWall(CWrite *pWrite);			// 壁情報保存処理
	void EditWallVertex(void);				// 壁の頂点情報編集処理

private:
#ifdef _DEBUG
	void Debug(void);																// デバッグ処理関数
#endif
	static bool Intersect(RAY* pRay, POLYGON* pPoly);

	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff;												// 頂点バッファへのポインタ
	LPDIRECT3DINDEXBUFFER9	m_pIdxBuff;												// インデックスバッファへのポインタ

	void MakeIndex(void);															// 頂点インデックスの作成

	D3DXVECTOR3 apNor[WALL_DEPTH_FIELD * WALL_WIDE_FIELD * 2];								// 1面ごとの法線ベクトルの配列

	D3DXVECTOR3				m_rot;													// ポリゴンの向き(回転)
	D3DXCOLOR				m_col;													// 頂点カラー
	D3DXMATRIX				m_mtxWorld;												// ワールドマトリックス

	int m_nNumVertex;																// 総頂点数
	int m_nNumIndex;																// インデックス数
	int m_nNumPolygon;																// 総ポリゴン数
	bool m_bDebug;																	// デバッグとしてのフラグ
	bool m_bCalculation;															// 起伏計算フラグ
};
#endif
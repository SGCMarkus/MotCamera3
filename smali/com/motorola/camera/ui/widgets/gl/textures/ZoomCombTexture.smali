.class public Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ZoomCombTexture.java"


# static fields
.field public static final PRIMARY_COLOR:I


# instance fields
.field public mDensity:F

.field public mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mStyle:I

.field public mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f06002d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->PRIMARY_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mDensity:F

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->PRIMARY_COLOR:I

    const-string v2, "1.0x"

    const/high16 v3, 0x42080000    # 34.0f

    const/4 v5, 0x0

    move-object v0, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mDensity:F

    const/high16 v1, 0x42f00000    # 120.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mStyle:I

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final layout()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mDensity:F

    mul-float/2addr v3, v1

    invoke-virtual {v0, v2, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_0
    return-void
.end method

.method public declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;)V
    .locals 0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->TOGGLE_BG:I

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    return-void
.end method

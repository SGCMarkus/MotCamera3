.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CutoutModeComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    .line 3
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

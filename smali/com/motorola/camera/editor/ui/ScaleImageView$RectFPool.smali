.class public Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;
.super Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectFPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public resetInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    return-object p1
.end method

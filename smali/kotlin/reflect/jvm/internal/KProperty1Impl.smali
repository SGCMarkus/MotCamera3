.class public Lkotlin/reflect/jvm/internal/KProperty1Impl;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
        "TV;>;",
        "Lkotlin/reflect/KProperty1<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final _getter:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal<",
            "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field

.field public final delegateField:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    .line 8
    new-instance p2, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    .line 10
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateField$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateField$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Landroidx/work/R$bool;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->delegateField:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 2
    new-instance p1, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$_getter$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    .line 3
    new-instance p2, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    .line 5
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateField$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl$delegateField$1;-><init>(Lkotlin/reflect/jvm/internal/KProperty1Impl;)V

    invoke-static {p1, p2}, Landroidx/work/R$bool;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->delegateField:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty1$Getter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter<",
            "TT;TV;>;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;->_getter:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_getter()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    return-object p0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->getGetter()Lkotlin/reflect/jvm/internal/KProperty1Impl$Getter;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

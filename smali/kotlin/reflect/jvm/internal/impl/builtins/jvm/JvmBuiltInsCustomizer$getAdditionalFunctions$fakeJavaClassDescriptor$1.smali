.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $javaAnalogueDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

.field public final synthetic $kotlinMutableClassIfContainer:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1;->$javaAnalogueDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1;->$kotlinMutableClassIfContainer:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1;->$javaAnalogueDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 2
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;->EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    move-object v9, v2

    .line 3
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1;->$kotlinMutableClassIfContainer:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "javaResolverCache"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 7
    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    .line 8
    iget-object v4, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 9
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    move-object v2, v12

    .line 12
    iget-object v3, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v4, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder;

    iget-object v5, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    iget-object v6, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 13
    iget-object v7, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signaturePropagator:Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;

    iget-object v8, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    .line 14
    iget-object v10, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaPropertyInitializerEvaluator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaPropertyInitializerEvaluator;

    iget-object v11, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->samConversionResolver:Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;

    move-object/from16 p0, v12

    iget-object v12, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v16, v14

    .line 15
    iget-object v14, v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ModuleClassResolver;

    move-object/from16 v29, v1

    move-object v1, v13

    move-object v13, v14

    iget-object v14, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->packagePartProvider:Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;

    move-object/from16 v0, v16

    move-object/from16 v16, v15

    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    move-object/from16 v30, v16

    move-object/from16 v31, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;

    move-object/from16 v16, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-object/from16 v17, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v18, v0

    .line 16
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v19, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v20, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;

    move-object/from16 v21, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    move-object/from16 v22, v0

    .line 17
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v23, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v24, v0

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaModuleResolver:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaModuleAnnotationsProvider;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x800000

    .line 18
    invoke-direct/range {v2 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaPropertyInitializerEvaluator;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolver;Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ModuleClassResolver;Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaModuleAnnotationsProvider;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;I)V

    const-string v0, "<this>"

    move-object/from16 v1, v31

    .line 19
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    .line 21
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/lang/Object;

    check-cast v1, Lkotlin/Lazy;

    .line 23
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    .line 24
    invoke-virtual/range {v29 .. v29}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v29

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    .line 25
    invoke-direct {v4, v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    return-object v4
.end method

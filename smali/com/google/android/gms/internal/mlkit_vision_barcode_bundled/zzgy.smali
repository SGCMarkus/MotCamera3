.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;
.super Ljava/lang/RuntimeException;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

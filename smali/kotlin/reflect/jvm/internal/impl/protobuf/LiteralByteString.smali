.class public Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;
    }
.end annotation


# instance fields
.field public final bytes:[B

.field public hash:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    return-void
.end method


# virtual methods
.method public copyToInternal([BIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz v0, :cond_4

    .line 5
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z

    move-result p0

    return p0

    .line 6
    :cond_4
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 4
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p3

    .line 6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p0, v2, :cond_1

    .line 7
    aget-byte p2, v0, p0

    aget-byte p3, v1, p1

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p1

    const/16 v0, 0x3b

    const-string v1, "Ran off end of other: "

    const-string v2, ", "

    invoke-static {v0, v1, p2, v2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOffsetIntoBytes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTreeDepth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    :cond_1
    return v0
.end method

.method public isBalanced()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isValidUtf8()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->iterator()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;
    .locals 2

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$1;)V

    return-object v0
.end method

.method public partialHash(III)I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p2

    move p2, p0

    :goto_0
    add-int v1, p0, p3

    if-ge p2, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    .line 2
    aget-byte v1, v0, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public partialIsValidUtf8(III)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    if-eqz p1, :cond_d

    if-lt v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-byte p2, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p2, v1, :cond_3

    const/16 p1, -0x3e

    if-lt p2, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 3
    aget-byte p2, p0, v0

    if-le p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    move p1, v2

    goto/16 :goto_3

    :cond_3
    const/16 v4, -0x10

    if-ge p2, v4, :cond_8

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, v0, 0x1

    .line 4
    aget-byte v0, p0, v0

    if-lt p1, p3, :cond_4

    .line 5
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p1

    goto :goto_3

    :cond_4
    move v5, v0

    move v0, p1

    move p1, v5

    :cond_5
    if-gt p1, v3, :cond_2

    const/16 v4, -0x60

    if-ne p2, v1, :cond_6

    if-lt p1, v4, :cond_2

    :cond_6
    const/16 v1, -0x13

    if-ne p2, v1, :cond_7

    if-ge p1, v4, :cond_2

    :cond_7
    add-int/lit8 p1, v0, 0x1

    .line 6
    aget-byte p2, p0, v0

    if-le p2, v3, :cond_1

    goto :goto_0

    :cond_8
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_a

    add-int/lit8 p1, v0, 0x1

    .line 7
    aget-byte v1, p0, v0

    if-lt p1, p3, :cond_9

    .line 8
    invoke-static {p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p1

    goto :goto_3

    :cond_9
    move v0, p1

    goto :goto_1

    :cond_a
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v4, p1

    :goto_1
    if-nez v4, :cond_c

    add-int/lit8 p1, v0, 0x1

    .line 9
    aget-byte v4, p0, v0

    if-lt p1, p3, :cond_b

    .line 10
    invoke-static {p2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p1

    goto :goto_3

    :cond_b
    move v0, p1

    :cond_c
    if-gt v1, v3, :cond_2

    shl-int/lit8 p1, p2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x1e

    if-nez p1, :cond_2

    if-gt v4, v3, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 11
    aget-byte p2, p0, v0

    if-le p2, v3, :cond_1

    goto :goto_0

    .line 12
    :cond_d
    :goto_2
    invoke-static {p0, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p1

    :goto_3
    return p1
.end method

.method public peekCachedHashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    return p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public writeToInternal(Ljava/io/OutputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

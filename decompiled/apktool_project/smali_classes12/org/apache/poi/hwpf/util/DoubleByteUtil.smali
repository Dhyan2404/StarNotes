.class public Lorg/apache/poi/hwpf/util/DoubleByteUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIG5:Ljava/nio/charset/Charset;

.field public static final DOUBLE_BYTE_CHARSETS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Big5"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/util/DoubleByteUtil;->BIG5:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/util/DoubleByteUtil;->DOUBLE_BYTE_CHARSETS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cp950ToString([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;-><init>([BII)V

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->read()I

    move-result p0

    :goto_0
    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->read()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/util/LittleEndianCP950Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

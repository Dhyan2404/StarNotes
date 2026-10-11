.class public Lnet/lingala/zip4j/model/Zip4jConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bufferSize:I

.field private final charset:Ljava/nio/charset/Charset;

.field private final useUtf8CharsetForPasswords:Z


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->charset:Ljava/nio/charset/Charset;

    iput p2, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->bufferSize:I

    iput-boolean p3, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->useUtf8CharsetForPasswords:Z

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->bufferSize:I

    return p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public isUseUtf8CharsetForPasswords()Z
    .locals 0

    iget-boolean p0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->useUtf8CharsetForPasswords:Z

    return p0
.end method

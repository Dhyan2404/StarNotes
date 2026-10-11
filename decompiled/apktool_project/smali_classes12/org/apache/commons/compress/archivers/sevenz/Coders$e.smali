.class public Lorg/apache/commons/compress/archivers/sevenz/Coders$e;
.super Lcom/sunia/HTREnginev2/swd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/Coders$e$b;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$e$a;
    }
.end annotation


# static fields
.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$e;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/swd;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/util/zip/Inflater;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    new-instance p3, Ljava/io/SequenceInputStream;

    new-instance p4, Ljava/io/ByteArrayInputStream;

    sget-object p5, Lorg/apache/commons/compress/archivers/sevenz/Coders$e;->b:[B

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p3, p2, p4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {p1, p3, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/Coders$e$a;

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$e$a;-><init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V

    return-object p2
.end method

.method public c(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    const/16 p0, 0x9

    invoke-static {p2, p0}, Lcom/sunia/HTREnginev2/swd;->f(Ljava/lang/Object;I)I

    move-result p0

    new-instance p2, Ljava/util/zip/Deflater;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    new-instance p0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p0, p1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/Coders$e$b;

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$e$b;-><init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    return-object p1
.end method

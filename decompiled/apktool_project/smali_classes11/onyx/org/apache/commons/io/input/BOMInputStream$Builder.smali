.class public Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/BOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/BOMInputStream;",
        "Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final n:[Lonyx/org/apache/commons/io/ByteOrderMark;


# instance fields
.field public l:[Lonyx/org/apache/commons/io/ByteOrderMark;

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lonyx/org/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    sget-object v2, Lonyx/org/apache/commons/io/ByteOrderMark;->UTF_8:Lonyx/org/apache/commons/io/ByteOrderMark;

    aput-object v2, v0, v1

    sput-object v0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->n:[Lonyx/org/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    sget-object v0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->n:[Lonyx/org/apache/commons/io/ByteOrderMark;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->l:[Lonyx/org/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method public static synthetic g()[Lonyx/org/apache/commons/io/ByteOrderMark;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->n:[Lonyx/org/apache/commons/io/ByteOrderMark;

    return-object v0
.end method

.method public static h()Lonyx/org/apache/commons/io/ByteOrderMark;
    .locals 2

    sget-object v0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->n:[Lonyx/org/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/BOMInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/BOMInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/BOMInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-boolean v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->m:Z

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->l:[Lonyx/org/apache/commons/io/ByteOrderMark;

    invoke-direct {v0, v1, v2, p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lonyx/org/apache/commons/io/ByteOrderMark;)V

    return-object v0
.end method

.method public varargs setByteOrderMarks([Lonyx/org/apache/commons/io/ByteOrderMark;)Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Lonyx/org/apache/commons/io/ByteOrderMark;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lonyx/org/apache/commons/io/ByteOrderMark;

    goto :goto_0

    :cond_0
    sget-object p1, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->n:[Lonyx/org/apache/commons/io/ByteOrderMark;

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->l:[Lonyx/org/apache/commons/io/ByteOrderMark;

    return-object p0
.end method

.method public setInclude(Z)Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->m:Z

    return-object p0
.end method

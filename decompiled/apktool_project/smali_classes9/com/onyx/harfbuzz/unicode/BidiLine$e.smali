.class public Lcom/onyx/harfbuzz/unicode/BidiLine$e;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/BidiLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/onyx/harfbuzz/unicode/BidiRun;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/onyx/harfbuzz/unicode/BidiLine;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiLine;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->f:Lcom/onyx/harfbuzz/unicode/BidiLine;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->a(J)I

    move-result p1

    iput p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiLine;Lcom/onyx/harfbuzz/unicode/BidiLine$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiLine$e;-><init>(Lcom/onyx/harfbuzz/unicode/BidiLine;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/onyx/harfbuzz/unicode/BidiRun;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->e:I

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkElementIndex(II)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->f:Lcom/onyx/harfbuzz/unicode/BidiLine;

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/unicode/BidiLine;->b(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->a(I)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$e;->e:I

    return p0
.end method

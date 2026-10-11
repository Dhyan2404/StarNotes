.class public Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/BidiParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/onyx/harfbuzz/unicode/BidiRun;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/harfbuzz/unicode/BidiParagraph;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;->e:Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;Lcom/onyx/harfbuzz/unicode/BidiParagraph$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;-><init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/onyx/harfbuzz/unicode/BidiRun;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;

    iget-object p0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$c;->e:Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;-><init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V

    return-object v0
.end method

.class public Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/ScriptClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/onyx/harfbuzz/unicode/ScriptRun;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:[B

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->e:[B

    iput p2, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->f:I

    iput p3, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->g:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/onyx/harfbuzz/unicode/ScriptRun;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;

    iget-object v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->e:[B

    iget v2, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->f:I

    iget p0, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$a;->g:I

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;-><init>([BII)V

    return-object v0
.end method

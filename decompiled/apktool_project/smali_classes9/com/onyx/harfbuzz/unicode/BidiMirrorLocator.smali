.class Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->nCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->a:J

    return-void
.end method

.method private native nCreate()J
.end method

.method private native nDispose(J)V
.end method

.method private native nGetNextPair(J)Lcom/onyx/harfbuzz/unicode/BidiPair;
.end method

.method private native nLoadLine(JJJ)V
.end method


# virtual methods
.method public a(Lcom/onyx/harfbuzz/unicode/BidiLine;)V
    .locals 7
    .param p1    # Lcom/onyx/harfbuzz/unicode/BidiLine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v5, p1, Lcom/onyx/harfbuzz/unicode/BidiLine;->a:J

    iput-wide v5, p0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->b:J

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->a:J

    iget-wide v3, p1, Lcom/onyx/harfbuzz/unicode/BidiLine;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->nLoadLine(JJJ)V

    return-void
.end method

.method public b()Lcom/onyx/harfbuzz/unicode/BidiPair;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->a:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->nGetNextPair(J)Lcom/onyx/harfbuzz/unicode/BidiPair;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->a:J

    invoke-direct {p0, v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->nDispose(J)V

    return-void
.end method

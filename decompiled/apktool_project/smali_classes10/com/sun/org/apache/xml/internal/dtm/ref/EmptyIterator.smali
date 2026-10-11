.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;


# static fields
.field private static final INSTANCE:Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;->INSTANCE:Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;->INSTANCE:Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;

    return-object v0
.end method


# virtual methods
.method public final cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    return-object p0
.end method

.method public final getLast()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getNodeByPosition(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getPosition()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getStartNode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final gotoMark()V
    .locals 0

    return-void
.end method

.method public final isReverse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final next()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    return-object p0
.end method

.method public final setMark()V
    .locals 0

    return-void
.end method

.method public final setRestartable(Z)V
    .locals 0

    return-void
.end method

.method public final setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    return-object p0
.end method

.class Lcom/sun/org/apache/xerces/internal/dom/LCount;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static lCounts:Ljava/util/Hashtable;


# instance fields
.field public bubbles:I

.field public captures:I

.field public defaults:I

.field public total:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lCounts:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->captures:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->bubbles:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->total:I

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/dom/LCount;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lCounts:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/LCount;->lCounts:Ljava/util/Hashtable;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/LCount;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/dom/LCount;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

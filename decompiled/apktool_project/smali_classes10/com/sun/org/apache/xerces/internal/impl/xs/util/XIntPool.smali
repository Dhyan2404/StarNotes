.class public final Lcom/sun/org/apache/xerces/internal/impl/xs/util/XIntPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POOL_SIZE:S = 0xas

.field private static final fXIntPool:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XIntPool;->fXIntPool:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XIntPool;->fXIntPool:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXInt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;
    .locals 1

    if-ltz p1, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XIntPool;->fXIntPool:[Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;-><init>(I)V

    return-object p0
.end method

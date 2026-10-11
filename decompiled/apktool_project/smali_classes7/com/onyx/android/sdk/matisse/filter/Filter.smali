.class public abstract Lcom/onyx/android/sdk/matisse/filter/Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K:I = 0x400

.field public static final MAX:I = 0x7fffffff

.field public static final MIN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract constraintTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract filter(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;
.end method

.method public needFiltering(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/filter/Filter;->constraintTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/matisse/MimeType;->checkType(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

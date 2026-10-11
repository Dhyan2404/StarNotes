.class public Lcom/zaxxer/sparsebits/SparseBitSet$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cache"
.end annotation


# instance fields
.field public final synthetic a:Lcom/zaxxer/sparsebits/SparseBitSet;

.field protected transient a2Count:I

.field protected transient a3Count:I

.field protected transient cardinality:I

.field protected transient count:I

.field protected transient hash:I

.field protected transient length:I

.field protected transient size:I


# direct methods
.method public constructor <init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->a:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

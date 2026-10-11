.class public Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/sfnt/ShapingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;->b:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/sfnt/ShapingEngine$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/onyx/harfbuzz/sfnt/ShapingEngine$b;-><init>()V

    return-void
.end method

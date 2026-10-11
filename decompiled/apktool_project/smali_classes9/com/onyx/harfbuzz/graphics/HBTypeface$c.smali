.class public Lcom/onyx/harfbuzz/graphics/HBTypeface$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/HBTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWeight;->REGULAR:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->a:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    .line 3
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeWidth;->NORMAL:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->b:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    .line 4
    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypeSlope;->PLAIN:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->c:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/graphics/HBTypeface$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;-><init>()V

    return-void
.end method

.class public Lcom/onyx/harfbuzz/graphics/HBTypeface$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/HBTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/graphics/HBTypeface$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;-><init>()V

    return-void
.end method

.class final Lsun/font/GlyphLayout$EngineRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/GlyphLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EngineRecord"
.end annotation


# instance fields
.field private eflags:I

.field private engine:Lsun/font/GlyphLayout$LayoutEngine;

.field private gmask:I

.field private key:Lsun/font/GlyphLayout$LayoutEngineKey;

.field private limit:I

.field private start:I

.field final synthetic this$0:Lsun/font/GlyphLayout;


# direct methods
.method public constructor <init>(Lsun/font/GlyphLayout;)V
    .locals 0

    iput-object p1, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-direct {p1}, Lsun/font/GlyphLayout$LayoutEngineKey;-><init>()V

    iput-object p1, p0, Lsun/font/GlyphLayout$EngineRecord;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    return-void
.end method


# virtual methods
.method public init(IILsun/font/Font2D;III)V
    .locals 0

    iput p1, p0, Lsun/font/GlyphLayout$EngineRecord;->start:I

    iput p2, p0, Lsun/font/GlyphLayout$EngineRecord;->limit:I

    iput p6, p0, Lsun/font/GlyphLayout$EngineRecord;->gmask:I

    iget-object p6, p0, Lsun/font/GlyphLayout$EngineRecord;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-virtual {p6, p3, p4, p5}, Lsun/font/GlyphLayout$LayoutEngineKey;->init(Lsun/font/Font2D;II)V

    const/4 p3, 0x0

    iput p3, p0, Lsun/font/GlyphLayout$EngineRecord;->eflags:I

    :goto_0
    if-ge p1, p2, :cond_3

    iget-object p3, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {p3}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object p3

    iget-object p3, p3, Lsun/font/TextRecord;->text:[C

    aget-char p3, p3, p1

    int-to-char p4, p3

    invoke-static {p4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p5

    if-eqz p5, :cond_0

    add-int/lit8 p5, p2, -0x1

    if-ge p1, p5, :cond_0

    iget-object p5, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {p5}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object p5

    iget-object p5, p5, Lsun/font/TextRecord;->text:[C

    add-int/lit8 p6, p1, 0x1

    aget-char p5, p5, p6

    invoke-static {p5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p1, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {p1}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object p1

    iget-object p1, p1, Lsun/font/TextRecord;->text:[C

    aget-char p1, p1, p6

    invoke-static {p4, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    move p1, p6

    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->getType(I)I

    move-result p3

    const/4 p4, 0x6

    if-eq p3, p4, :cond_2

    const/4 p4, 0x7

    if-eq p3, p4, :cond_2

    const/16 p4, 0x8

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x4

    iput p1, p0, Lsun/font/GlyphLayout$EngineRecord;->eflags:I

    :cond_3
    iget-object p1, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {p1}, Lsun/font/GlyphLayout;->access$100(Lsun/font/GlyphLayout;)Lsun/font/GlyphLayout$LayoutEngineFactory;

    move-result-object p1

    iget-object p2, p0, Lsun/font/GlyphLayout$EngineRecord;->key:Lsun/font/GlyphLayout$LayoutEngineKey;

    invoke-interface {p1, p2}, Lsun/font/GlyphLayout$LayoutEngineFactory;->getEngine(Lsun/font/GlyphLayout$LayoutEngineKey;)Lsun/font/GlyphLayout$LayoutEngine;

    move-result-object p1

    iput-object p1, p0, Lsun/font/GlyphLayout$EngineRecord;->engine:Lsun/font/GlyphLayout$LayoutEngine;

    return-void
.end method

.method public layout()V
    .locals 12

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object v0

    iget v1, p0, Lsun/font/GlyphLayout$EngineRecord;->start:I

    iput v1, v0, Lsun/font/TextRecord;->start:I

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object v0

    iget v1, p0, Lsun/font/GlyphLayout$EngineRecord;->limit:I

    iput v1, v0, Lsun/font/TextRecord;->limit:I

    iget-object v2, p0, Lsun/font/GlyphLayout$EngineRecord;->engine:Lsun/font/GlyphLayout$LayoutEngine;

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$200(Lsun/font/GlyphLayout;)Lsun/font/FontStrikeDesc;

    move-result-object v3

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$300(Lsun/font/GlyphLayout;)[F

    move-result-object v4

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$400(Lsun/font/GlyphLayout;)F

    move-result v5

    iget v6, p0, Lsun/font/GlyphLayout$EngineRecord;->gmask:I

    iget v0, p0, Lsun/font/GlyphLayout$EngineRecord;->start:I

    iget-object v1, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v1}, Lsun/font/GlyphLayout;->access$500(Lsun/font/GlyphLayout;)I

    move-result v1

    sub-int v7, v0, v1

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;

    move-result-object v8

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$600(Lsun/font/GlyphLayout;)I

    move-result v0

    iget v1, p0, Lsun/font/GlyphLayout$EngineRecord;->eflags:I

    or-int v9, v0, v1

    iget-object v0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {v0}, Lsun/font/GlyphLayout;->access$700(Lsun/font/GlyphLayout;)Ljava/awt/geom/Point2D$Float;

    move-result-object v10

    iget-object p0, p0, Lsun/font/GlyphLayout$EngineRecord;->this$0:Lsun/font/GlyphLayout;

    invoke-static {p0}, Lsun/font/GlyphLayout;->access$800(Lsun/font/GlyphLayout;)Lsun/font/GlyphLayout$GVData;

    move-result-object v11

    invoke-interface/range {v2 .. v11}, Lsun/font/GlyphLayout$LayoutEngine;->layout(Lsun/font/FontStrikeDesc;[FFIILsun/font/TextRecord;ILjava/awt/geom/Point2D$Float;Lsun/font/GlyphLayout$GVData;)V

    return-void
.end method

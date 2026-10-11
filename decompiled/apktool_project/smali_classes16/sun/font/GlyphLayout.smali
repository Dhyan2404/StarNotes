.class public final Lsun/font/GlyphLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/GlyphLayout$EngineRecord;,
        Lsun/font/GlyphLayout$GVData;,
        Lsun/font/GlyphLayout$SDCache;,
        Lsun/font/GlyphLayout$LayoutEngine;,
        Lsun/font/GlyphLayout$LayoutEngineFactory;,
        Lsun/font/GlyphLayout$LayoutEngineKey;
    }
.end annotation


# static fields
.field private static volatile cache:Lsun/font/GlyphLayout;


# instance fields
.field private _ercount:I

.field private _erecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/font/GlyphLayout$EngineRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _fontRuns:Lsun/font/FontRunIterator;

.field private _gvdata:Lsun/font/GlyphLayout$GVData;

.field private _lef:Lsun/font/GlyphLayout$LayoutEngineFactory;

.field private _mat:[F

.field private _offset:I

.field private _pt:Ljava/awt/geom/Point2D$Float;

.field private _scriptRuns:Lsun/font/ScriptRun;

.field private _sd:Lsun/font/FontStrikeDesc;

.field private _textRecord:Lsun/font/TextRecord;

.field private _typo_flags:I

.field private ptSize:F


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/font/GlyphLayout$GVData;

    invoke-direct {v0}, Lsun/font/GlyphLayout$GVData;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    new-instance v0, Lsun/font/TextRecord;

    invoke-direct {v0}, Lsun/font/TextRecord;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_textRecord:Lsun/font/TextRecord;

    new-instance v0, Lsun/font/ScriptRun;

    invoke-direct {v0}, Lsun/font/ScriptRun;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    new-instance v0, Lsun/font/FontRunIterator;

    invoke-direct {v0}, Lsun/font/FontRunIterator;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_erecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Float;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_pt:Ljava/awt/geom/Point2D$Float;

    new-instance v0, Lsun/font/FontStrikeDesc;

    invoke-direct {v0}, Lsun/font/FontStrikeDesc;-><init>()V

    iput-object v0, p0, Lsun/font/GlyphLayout;->_sd:Lsun/font/FontStrikeDesc;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lsun/font/GlyphLayout;->_mat:[F

    return-void
.end method

.method public static synthetic access$000(Lsun/font/GlyphLayout;)Lsun/font/TextRecord;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_textRecord:Lsun/font/TextRecord;

    return-object p0
.end method

.method public static synthetic access$100(Lsun/font/GlyphLayout;)Lsun/font/GlyphLayout$LayoutEngineFactory;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_lef:Lsun/font/GlyphLayout$LayoutEngineFactory;

    return-object p0
.end method

.method public static synthetic access$200(Lsun/font/GlyphLayout;)Lsun/font/FontStrikeDesc;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_sd:Lsun/font/FontStrikeDesc;

    return-object p0
.end method

.method public static synthetic access$300(Lsun/font/GlyphLayout;)[F
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_mat:[F

    return-object p0
.end method

.method public static synthetic access$400(Lsun/font/GlyphLayout;)F
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout;->ptSize:F

    return p0
.end method

.method public static synthetic access$500(Lsun/font/GlyphLayout;)I
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout;->_offset:I

    return p0
.end method

.method public static synthetic access$600(Lsun/font/GlyphLayout;)I
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout;->_typo_flags:I

    return p0
.end method

.method public static synthetic access$700(Lsun/font/GlyphLayout;)Ljava/awt/geom/Point2D$Float;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_pt:Ljava/awt/geom/Point2D$Float;

    return-object p0
.end method

.method public static synthetic access$800(Lsun/font/GlyphLayout;)Lsun/font/GlyphLayout$GVData;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    return-object p0
.end method

.method public static done(Lsun/font/GlyphLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/GlyphLayout;->_lef:Lsun/font/GlyphLayout$LayoutEngineFactory;

    sput-object p0, Lsun/font/GlyphLayout;->cache:Lsun/font/GlyphLayout;

    return-void
.end method

.method public static get(Lsun/font/GlyphLayout$LayoutEngineFactory;)Lsun/font/GlyphLayout;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lsun/font/SunLayoutEngine;->instance()Lsun/font/GlyphLayout$LayoutEngineFactory;

    move-result-object p0

    :cond_0
    const-class v0, Lsun/font/GlyphLayout;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/GlyphLayout;->cache:Lsun/font/GlyphLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lsun/font/GlyphLayout;->cache:Lsun/font/GlyphLayout;

    sput-object v2, Lsun/font/GlyphLayout;->cache:Lsun/font/GlyphLayout;

    move-object v2, v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    new-instance v2, Lsun/font/GlyphLayout;

    invoke-direct {v2}, Lsun/font/GlyphLayout;-><init>()V

    :cond_2
    iput-object p0, v2, Lsun/font/GlyphLayout;->_lef:Lsun/font/GlyphLayout$LayoutEngineFactory;

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/GlyphLayout;->_typo_flags:I

    iput v0, p0, Lsun/font/GlyphLayout;->_ercount:I

    iget-object p0, p0, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    invoke-virtual {p0, p1}, Lsun/font/GlyphLayout$GVData;->init(I)V

    return-void
.end method

.method private nextEngineRecord(IIIILsun/font/Font2D;I)V
    .locals 8

    iget v0, p0, Lsun/font/GlyphLayout;->_ercount:I

    iget-object v1, p0, Lsun/font/GlyphLayout;->_erecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lsun/font/GlyphLayout$EngineRecord;

    invoke-direct {v0, p0}, Lsun/font/GlyphLayout$EngineRecord;-><init>(Lsun/font/GlyphLayout;)V

    iget-object v1, p0, Lsun/font/GlyphLayout;->_erecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/font/GlyphLayout;->_erecords:Ljava/util/ArrayList;

    iget v1, p0, Lsun/font/GlyphLayout;->_ercount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/GlyphLayout$EngineRecord;

    :goto_0
    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p5

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lsun/font/GlyphLayout$EngineRecord;->init(IILsun/font/Font2D;III)V

    iget p1, p0, Lsun/font/GlyphLayout;->_ercount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsun/font/GlyphLayout;->_ercount:I

    return-void
.end method


# virtual methods
.method public layout(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[CIIILsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    if-eqz v9, :cond_11

    if-ltz v10, :cond_11

    if-ltz v11, :cond_11

    array-length v0, v9

    sub-int/2addr v0, v10

    if-gt v11, v0, :cond_11

    invoke-direct {v7, v11}, Lsun/font/GlyphLayout;->init(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getAttributes()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lsun/font/AttributeMap;

    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getKerning()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    or-int/2addr v2, v12

    iput v2, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    :cond_0
    invoke-virtual {v0}, Lsun/font/AttributeValues;->getLigatures()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    or-int/2addr v0, v1

    iput v0, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    :cond_1
    iput v10, v7, Lsun/font/GlyphLayout;->_offset:I

    invoke-static/range {p1 .. p2}, Lsun/font/GlyphLayout$SDCache;->get(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/GlyphLayout$SDCache;

    move-result-object v13

    iget-object v0, v7, Lsun/font/GlyphLayout;->_mat:[F

    iget-object v2, v13, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v14, 0x0

    aput v2, v0, v14

    iget-object v0, v7, Lsun/font/GlyphLayout;->_mat:[F

    iget-object v2, v13, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v12

    iget-object v0, v7, Lsun/font/GlyphLayout;->_mat:[F

    iget-object v2, v13, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, v7, Lsun/font/GlyphLayout;->_mat:[F

    iget-object v1, v13, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, v7, Lsun/font/GlyphLayout;->_pt:Ljava/awt/geom/Point2D$Float;

    iget-object v1, v13, Lsun/font/GlyphLayout$SDCache;->delta:Ljava/awt/geom/Point2D$Float;

    invoke-virtual {v0, v1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getSize2D()F

    move-result v0

    iput v0, v7, Lsun/font/GlyphLayout;->ptSize:F

    add-int v6, v10, v11

    array-length v0, v9

    if-eqz p6, :cond_5

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_2

    iget v1, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    :cond_2
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_0

    :cond_3
    move v1, v14

    :goto_0
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_4

    move v4, v1

    move v5, v6

    goto :goto_1

    :cond_4
    move v5, v0

    move v4, v1

    goto :goto_1

    :cond_5
    move v5, v0

    move v4, v14

    :goto_1
    const/4 v15, -0x1

    invoke-static/range {p1 .. p1}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    instance-of v1, v0, Lsun/font/FontSubstitution;

    if-eqz v1, :cond_6

    check-cast v0, Lsun/font/FontSubstitution;

    invoke-interface {v0}, Lsun/font/FontSubstitution;->getCompositeFont2D()Lsun/font/CompositeFont;

    move-result-object v0

    :cond_6
    move-object v3, v0

    iget-object v0, v7, Lsun/font/GlyphLayout;->_textRecord:Lsun/font/TextRecord;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object v12, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lsun/font/TextRecord;->init([CIIII)V

    instance-of v0, v12, Lsun/font/CompositeFont;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v0, v9, v10, v11}, Lsun/font/ScriptRun;->init([CII)V

    iget-object v0, v7, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    move-object v3, v12

    check-cast v3, Lsun/font/CompositeFont;

    invoke-virtual {v0, v3, v9, v10, v6}, Lsun/font/FontRunIterator;->init(Lsun/font/CompositeFont;[CII)V

    move v0, v10

    :goto_2
    iget-object v1, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v1}, Lsun/font/ScriptRun;->next()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v1}, Lsun/font/ScriptRun;->getScriptLimit()I

    move-result v12

    iget-object v1, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v1}, Lsun/font/ScriptRun;->getScriptCode()I

    move-result v6

    move v1, v0

    :goto_3
    iget-object v0, v7, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    invoke-virtual {v0, v6, v12}, Lsun/font/FontRunIterator;->next(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    invoke-virtual {v0}, Lsun/font/FontRunIterator;->getFont()Lsun/font/PhysicalFont;

    move-result-object v0

    instance-of v2, v0, Lsun/font/NativeFont;

    if-eqz v2, :cond_7

    check-cast v0, Lsun/font/NativeFont;

    invoke-virtual {v0}, Lsun/font/NativeFont;->getDelegateFont()Lsun/font/PhysicalFont;

    move-result-object v0

    :cond_7
    move-object v5, v0

    iget-object v0, v7, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    invoke-virtual {v0}, Lsun/font/FontRunIterator;->getGlyphMask()I

    move-result v16

    iget-object v0, v7, Lsun/font/GlyphLayout;->_fontRuns:Lsun/font/FontRunIterator;

    invoke-virtual {v0}, Lsun/font/FontRunIterator;->getPos()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v6

    move v4, v15

    move/from16 v18, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lsun/font/GlyphLayout;->nextEngineRecord(IIIILsun/font/Font2D;I)V

    move/from16 v1, v17

    move/from16 v6, v18

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    iget-object v0, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v0, v9, v10, v11}, Lsun/font/ScriptRun;->init([CII)V

    move v1, v10

    :goto_4
    iget-object v0, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v0}, Lsun/font/ScriptRun;->next()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v0}, Lsun/font/ScriptRun;->getScriptLimit()I

    move-result v15

    iget-object v0, v7, Lsun/font/GlyphLayout;->_scriptRuns:Lsun/font/ScriptRun;

    invoke-virtual {v0}, Lsun/font/ScriptRun;->getScriptCode()I

    move-result v3

    const/4 v6, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v2, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v6}, Lsun/font/GlyphLayout;->nextEngineRecord(IIIILsun/font/Font2D;I)V

    move v1, v15

    goto :goto_4

    :cond_a
    iget v0, v7, Lsun/font/GlyphLayout;->_ercount:I

    iget v1, v7, Lsun/font/GlyphLayout;->_typo_flags:I

    if-gez v1, :cond_b

    add-int/lit8 v14, v0, -0x1

    const/4 v12, -0x1

    move v0, v12

    goto :goto_5

    :cond_b
    const/4 v12, 0x1

    :goto_5
    iget-object v1, v13, Lsun/font/GlyphLayout$SDCache;->sd:Lsun/font/FontStrikeDesc;

    iput-object v1, v7, Lsun/font/GlyphLayout;->_sd:Lsun/font/FontStrikeDesc;

    :goto_6
    if-eq v14, v0, :cond_e

    iget-object v1, v7, Lsun/font/GlyphLayout;->_erecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/GlyphLayout$EngineRecord;

    :cond_c
    :goto_7
    :try_start_0
    invoke-virtual {v1}, Lsun/font/GlyphLayout$EngineRecord;->layout()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v7, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    iget v1, v1, Lsun/font/GlyphLayout$GVData;->_count:I

    if-gez v1, :cond_d

    goto :goto_8

    :cond_d
    add-int/2addr v14, v12

    goto :goto_6

    :catch_0
    iget-object v2, v7, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    iget v2, v2, Lsun/font/GlyphLayout$GVData;->_count:I

    if-ltz v2, :cond_c

    iget-object v2, v7, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    invoke-virtual {v2}, Lsun/font/GlyphLayout$GVData;->grow()V

    goto :goto_7

    :cond_e
    :goto_8
    iget-object v0, v7, Lsun/font/GlyphLayout;->_gvdata:Lsun/font/GlyphLayout$GVData;

    iget v1, v0, Lsun/font/GlyphLayout$GVData;->_count:I

    if-gez v1, :cond_f

    new-instance v6, Lsun/font/AndroidGlyphVector;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;)V

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenType layout failed on font: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v0, v8, v1, v2}, Lsun/font/GlyphLayout$GVData;->createGlyphVector(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;

    move-result-object v6

    :cond_10
    :goto_9
    return-object v6

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

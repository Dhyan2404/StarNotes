.class public Lcom/sunia/HTREnginev2/qvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/jif;


# static fields
.field public static final a:I = 0x1

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x10101b0

    const v1, 0x10100d0

    const v2, 0x10101ad

    const v3, 0x10101ae

    const v4, 0x10101af

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/qvi;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 3

    sget-object p0, Lcom/sunia/HTREnginev2/qvi;->b:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-static {p1, p2, v1}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    aput v1, p3, v0

    const/4 v1, 0x1

    aget v2, p0, v1

    invoke-static {p1, p2, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x2

    aget v2, p0, v1

    invoke-static {p1, p2, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x3

    aget v2, p0, v1

    invoke-static {p1, p2, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x4

    aget p0, p0, v1

    invoke-static {p1, p2, p0, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->r(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p0

    aput p0, p3, v1

    return-void
.end method

.method public inflateDrawable(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sget-object v4, Lcom/sunia/HTREnginev2/qvi;->b:[I

    array-length v4, v4

    const/4 v5, 0x2

    filled-new-array {v5, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eq v10, v3, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v2, :cond_1

    if-eq v10, v12, :cond_b

    :cond_1
    if-eq v10, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    if-gt v13, v2, :cond_a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "item"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_3

    :cond_3
    array-length v10, v4

    if-lt v8, v10, :cond_4

    array-length v10, v6

    add-int/2addr v10, v3

    sget-object v12, Lcom/sunia/HTREnginev2/qvi;->b:[I

    array-length v12, v12

    filled-new-array {v10, v12}, [I

    move-result-object v10

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    array-length v12, v4

    invoke-static {v4, v7, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v10

    :cond_4
    aget-object v10, v4, v8

    move-object/from16 v13, p0

    invoke-virtual {v13, v0, v1, v10}, Lcom/sunia/HTREnginev2/qvi;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V

    add-int/lit8 v8, v8, 0x1

    const v10, 0x1010199

    invoke-static {v0, v1, v10}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->n(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_7

    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v11, :cond_5

    goto :goto_1

    :cond_5
    if-ne v10, v5, :cond_6

    invoke-static/range {p1 .. p3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget v11, Lcom/onyx/android/sdk/skin/R$attr;->drawableTint:I

    invoke-static {v0, v1, v11}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->t(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    if-eqz v11, :cond_8

    sget v12, Lcom/onyx/android/sdk/skin/R$attr;->tintDrawableTintMode:I

    invoke-static {v0, v1, v12}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_8
    :goto_2
    if-eqz v10, :cond_0

    array-length v11, v6

    if-lt v9, v11, :cond_9

    array-length v11, v6

    add-int/2addr v11, v3

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    array-length v12, v6

    invoke-static {v6, v7, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v11

    :cond_9
    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_3
    move-object/from16 v13, p0

    goto/16 :goto_0

    :cond_b
    aget-object v0, v6, v7

    if-eqz v0, :cond_11

    if-eq v9, v8, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v1, v7

    :goto_4
    array-length v2, v6

    if-ge v1, v2, :cond_10

    aget-object v2, v4, v1

    aget v15, v2, v7

    if-nez v15, :cond_d

    aget v8, v2, v3

    if-nez v8, :cond_d

    aget v8, v2, v5

    if-nez v8, :cond_d

    aget v8, v2, v12

    if-eqz v8, :cond_e

    :cond_d
    aget v16, v2, v3

    aget v17, v2, v5

    aget v18, v2, v12

    move-object v13, v0

    move v14, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_e
    aget v2, v2, v11

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-object v0

    :cond_11
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

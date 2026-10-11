.class public Lcom/onyx/android/sdk/theme/utils/RippleDrawableInflateImpl;
.super Lcom/sunia/HTREnginev2/qvi;
.source "SourceFile"


# static fields
.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qvi;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    return-void
.end method

.method public inflateDrawable(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget-object v5, Lcom/sunia/HTREnginev2/qvi;->b:[I

    array-length v5, v5

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    new-array v6, v4, [Landroid/graphics/drawable/Drawable;

    const v7, 0x10101a5

    invoke-static {v1, v2, v7}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->t(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    const/4 v10, 0x0

    move v12, v10

    move v13, v12

    const/4 v11, -0x1

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v9, 0x3

    const/4 v8, 0x2

    if-eq v14, v4, :cond_c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v3, :cond_1

    if-eq v14, v9, :cond_c

    :cond_1
    if-eq v14, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    if-gt v15, v3, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v14, "item"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    :cond_3
    array-length v9, v5

    if-lt v12, v9, :cond_4

    array-length v9, v6

    add-int/2addr v9, v4

    sget-object v14, Lcom/sunia/HTREnginev2/qvi;->b:[I

    array-length v14, v14

    filled-new-array {v9, v14}, [I

    move-result-object v9

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    array-length v14, v5

    invoke-static {v5, v10, v9, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v9

    :cond_4
    aget-object v9, v5, v12

    invoke-virtual {v0, v1, v2, v9}, Lcom/sunia/HTREnginev2/qvi;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V

    add-int/lit8 v12, v12, 0x1

    const v9, 0x1010199

    invoke-static {v1, v2, v9}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->n(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const v14, 0x10100d0

    invoke-static {v1, v2, v14, v10}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->r(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v14

    const v15, 0x102002e

    if-ne v14, v15, :cond_5

    add-int/lit8 v11, v12, -0x1

    :cond_5
    if-nez v9, :cond_8

    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v14, 0x4

    if-ne v9, v14, :cond_6

    goto :goto_1

    :cond_6
    if-ne v9, v8, :cond_7

    invoke-static/range {p1 .. p3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_2

    :cond_7
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

    :cond_8
    sget v8, Lcom/onyx/android/sdk/skin/R$attr;->drawableTint:I

    invoke-static {v1, v2, v8}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->t(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_9

    sget v14, Lcom/onyx/android/sdk/skin/R$attr;->tintDrawableTintMode:I

    invoke-static {v1, v2, v14}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v14

    invoke-static {v9, v8, v14}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_9
    :goto_2
    if-eqz v9, :cond_b

    array-length v8, v6

    if-lt v13, v8, :cond_a

    array-length v8, v6

    add-int/2addr v8, v4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    array-length v14, v6

    invoke-static {v6, v10, v8, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v8

    :cond_a
    aput-object v9, v6, v13

    add-int/lit8 v13, v13, 0x1

    :cond_b
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    aget-object v3, v6, v10

    if-eqz v3, :cond_14

    if-eq v13, v12, :cond_d

    goto :goto_7

    :cond_d
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    if-ltz v11, :cond_e

    aget-object v12, v6, v11

    goto :goto_4

    :cond_e
    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x0

    invoke-direct {v3, v7, v13, v12}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v7, 0x10101a8

    const/4 v12, -0x1

    invoke-static {v1, v2, v7, v12}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    move v1, v10

    :goto_5
    array-length v2, v6

    if-ge v1, v2, :cond_13

    if-ne v1, v11, :cond_f

    const/4 v7, 0x4

    goto :goto_6

    :cond_f
    aget-object v2, v6, v1

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/theme/utils/RippleDrawableInflateImpl;->b(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/drawable/Drawable;)V

    aget-object v2, v5, v1

    aget v18, v2, v10

    if-nez v18, :cond_10

    aget v7, v2, v4

    if-nez v7, :cond_10

    aget v7, v2, v8

    if-nez v7, :cond_10

    aget v7, v2, v9

    if-eqz v7, :cond_11

    :cond_10
    aget v19, v2, v4

    aget v20, v2, v8

    aget v21, v2, v9

    move-object/from16 v16, v3

    move/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_11
    const/4 v7, 0x4

    aget v2, v2, v7

    if-eqz v2, :cond_12

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_12
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-object v3

    :cond_14
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

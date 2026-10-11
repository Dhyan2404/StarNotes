.class public Lcom/sunia/HTREnginev2/v4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/jif;


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Ljava/lang/reflect/Field;

.field public static d:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    if-eqz p1, :cond_7

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_6

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_5

    const/16 p0, 0x87

    if-eq p1, p0, :cond_4

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_3

    const/16 p0, 0xe1

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13b

    if-eq p1, p0, :cond_0

    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_3
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_4
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_5
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_6
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :cond_7
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0
.end method

.method public b(IF)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;IFFF)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->v(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p3, p2, Landroid/util/TypedValue;->type:I

    const/4 p4, 0x6

    if-ne p3, p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p5, p6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    :goto_0
    move p4, p1

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p4
.end method

.method public d(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1

    const p0, 0x101019a

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->q(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const p0, 0x101011c

    invoke-static {p1, p2, p0, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->e(Landroid/content/Context;Landroid/util/AttributeSet;IZ)Z

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/v4h;->a(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    return-void
.end method

.method public f(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x10101a4

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->v(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p4, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs g(Landroid/graphics/drawable/Drawable$ConstantState;[F)V
    .locals 1

    :try_start_0
    sget-object p0, Lcom/sunia/HTREnginev2/v4h;->c:Ljava/lang/reflect/Field;

    if-nez p0, :cond_0

    const-string p0, "android.graphics.drawable.GradientDrawable$GradientState"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mPositions"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/sunia/HTREnginev2/v4h;->c:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/v4h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public inflateDrawable(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v8, v9, v10, v11}, Lcom/sunia/HTREnginev2/v4h;->d(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v12, 0x1

    add-int/lit8 v13, v0, 0x1

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v14, 0x3

    if-ge v1, v13, :cond_0

    if-eq v0, v14, :cond_14

    :cond_0
    const/4 v15, 0x2

    if-eq v0, v15, :cond_1

    goto :goto_0

    :cond_1
    if-le v1, v13, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x1010159

    if-eqz v1, :cond_3

    invoke-static {v9, v10, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->l(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v0

    const v1, 0x1010155

    invoke-static {v9, v10, v1}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->l(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    move v2, v12

    goto/16 :goto_7

    :cond_3
    const-string v1, "gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    const v4, 0x10101a2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v15, v5

    move v5, v0

    move v0, v6

    move/from16 v6, v16

    move v0, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/sunia/HTREnginev2/v4h;->c(Landroid/content/Context;Landroid/util/AttributeSet;IFFF)F

    move-result v7

    const v4, 0x10101a3

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move v12, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/sunia/HTREnginev2/v4h;->c(Landroid/content/Context;Landroid/util/AttributeSet;IFFF)F

    move-result v7

    invoke-virtual {v11, v12, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    const v1, 0x101019f

    invoke-static {v9, v10, v1, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->e(Landroid/content/Context;Landroid/util/AttributeSet;IZ)Z

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    const v1, 0x10101a1

    invoke-static {v9, v10, v1, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->q(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const v2, 0x101019d

    invoke-static {v9, v10, v2, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    const v3, 0x101020b

    invoke-static {v9, v10, v3, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v4

    const v5, 0x101019e

    invoke-static {v9, v10, v5, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v5

    invoke-static {v9, v10, v3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->p(Landroid/content/Context;Landroid/util/AttributeSet;I)Z

    move-result v3

    if-nez v3, :cond_4

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v3

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v3, :cond_6

    filled-new-array {v2, v4, v5}, [I

    move-result-object v2

    new-array v3, v14, [F

    aput v0, v3, v15

    cmpl-float v4, v12, v6

    if-eqz v4, :cond_5

    move v7, v12

    :cond_5
    const/4 v4, 0x1

    aput v7, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-virtual {v11, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    goto :goto_1

    :cond_6
    filled-new-array {v2, v4, v5}, [I

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    invoke-virtual {v11}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    new-array v3, v14, [F

    aput v0, v3, v15

    cmpl-float v4, v12, v6

    if-eqz v4, :cond_7

    move v7, v12

    :cond_7
    const/4 v4, 0x1

    aput v7, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-virtual {v8, v2, v3}, Lcom/sunia/HTREnginev2/v4h;->g(Landroid/graphics/drawable/Drawable$ConstantState;[F)V

    :goto_1
    if-nez v1, :cond_8

    const v1, 0x10101a0

    invoke-static {v9, v10, v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->o(Landroid/content/Context;Landroid/util/AttributeSet;IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v8, v11, v0}, Lcom/sunia/HTREnginev2/v4h;->e(Landroid/graphics/drawable/GradientDrawable;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v9, v10, v11, v1}, Lcom/sunia/HTREnginev2/v4h;->f(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/GradientDrawable;I)V

    goto :goto_2

    :cond_9
    move-object v1, v0

    move v15, v5

    move v3, v6

    move v0, v7

    const-string v4, "solid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x101031f

    const v6, 0x10101a5

    if-eqz v4, :cond_b

    invoke-static {v9, v10, v6, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    invoke-static {v9, v10, v5, v3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->o(Landroid/content/Context;Landroid/util/AttributeSet;IF)F

    move-result v1

    invoke-virtual {v8, v0, v1}, Lcom/sunia/HTREnginev2/v4h;->b(IF)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_a
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_b
    const-string v4, "stroke"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v9, v10, v5, v3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->o(Landroid/content/Context;Landroid/util/AttributeSet;IF)F

    move-result v1

    invoke-static {v9, v10, v6, v15}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    invoke-static {v9, v10, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->l(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    const v4, 0x10101a6

    invoke-static {v9, v10, v4}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->h(Landroid/content/Context;Landroid/util/AttributeSet;I)F

    move-result v4

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_c

    const v0, 0x10101a7

    invoke-static {v9, v10, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->h(Landroid/content/Context;Landroid/util/AttributeSet;I)F

    move-result v0

    invoke-virtual {v8, v3, v1}, Lcom/sunia/HTREnginev2/v4h;->b(IF)I

    move-result v1

    invoke-virtual {v11, v2, v1, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto :goto_2

    :cond_c
    invoke-virtual {v8, v3, v1}, Lcom/sunia/HTREnginev2/v4h;->b(IF)I

    move-result v0

    invoke-virtual {v11, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2

    :cond_d
    const-string v0, "corners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x10101a8

    invoke-static {v9, v10, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->l(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, 0x10101a9

    invoke-static {v9, v10, v1, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v1

    const v2, 0x10101aa

    invoke-static {v9, v10, v2, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    const v3, 0x10101ab

    invoke-static {v9, v10, v3, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    const v4, 0x10101ac

    invoke-static {v9, v10, v4, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->m(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v4

    if-ne v1, v0, :cond_e

    if-ne v2, v0, :cond_e

    if-ne v3, v0, :cond_e

    if-eq v4, v0, :cond_a

    :cond_e
    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float v1, v1

    aput v1, v0, v15

    const/4 v5, 0x1

    aput v1, v0, v5

    int-to-float v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    aput v1, v0, v14

    int-to-float v1, v4

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    int-to-float v1, v3

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "padding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x10101ad

    invoke-static {v9, v10, v0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v0

    const v1, 0x10101ae

    invoke-static {v9, v10, v1}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    const v2, 0x10101af

    invoke-static {v9, v10, v2}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    const v3, 0x10101b0

    invoke-static {v9, v10, v3}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v3

    if-nez v0, :cond_10

    if-nez v1, :cond_10

    if-nez v2, :cond_10

    if-eqz v3, :cond_a

    :cond_10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_0
    sget-object v0, Lcom/sunia/HTREnginev2/v4h;->a:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v1, "mPadding"

    if-nez v0, :cond_11

    :try_start_1
    const-class v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/v4h;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_11
    sget-object v0, Lcom/sunia/HTREnginev2/v4h;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v11, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/sunia/HTREnginev2/v4h;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const-string v0, "android.graphics.drawable.GradientDrawable$GradientState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/v4h;->b:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :cond_12
    const/4 v2, 0x1

    :goto_3
    sget-object v0, Lcom/sunia/HTREnginev2/v4h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_13
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad element under <shape>: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v12, v2

    goto/16 :goto_0

    :cond_14
    return-object v11
.end method

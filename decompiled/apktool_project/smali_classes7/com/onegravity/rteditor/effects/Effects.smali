.class public Lcom/onegravity/rteditor/effects/Effects;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

.field public static final ALL_EFFECTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/effects/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public static final BGCOLOR:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Integer;",
            "Lcom/onegravity/rteditor/spans/BackgroundColorSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOLD:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/BoldSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final BULLET:Lcom/onegravity/rteditor/effects/BulletEffect;

.field public static final FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Integer;",
            "Lcom/onegravity/rteditor/spans/ForegroundColorSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Integer;",
            "Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMATTING_EFFECTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/effects/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

.field public static final ITALIC:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/ItalicSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINK:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/String;",
            "Lcom/onegravity/rteditor/spans/LinkSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER:Lcom/onegravity/rteditor/effects/NumberEffect;

.field public static final STRIKETHROUGH:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/StrikethroughSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIPT:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/SubscriptSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPERSCRIPT:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/SuperscriptSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Lcom/onegravity/rteditor/fonts/RTTypeface;",
            "Lcom/onegravity/rteditor/spans/TypefaceSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDERLINE:Lcom/onegravity/rteditor/effects/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/effects/Effect<",
            "Ljava/lang/Boolean;",
            "Lcom/onegravity/rteditor/spans/UnderlineSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/onegravity/rteditor/effects/BoldEffect;

    invoke-direct {v0}, Lcom/onegravity/rteditor/effects/BoldEffect;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/effects/Effects;->BOLD:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v1, Lcom/onegravity/rteditor/effects/ItalicEffect;

    invoke-direct {v1}, Lcom/onegravity/rteditor/effects/ItalicEffect;-><init>()V

    sput-object v1, Lcom/onegravity/rteditor/effects/Effects;->ITALIC:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v2, Lcom/onegravity/rteditor/effects/UnderlineEffect;

    invoke-direct {v2}, Lcom/onegravity/rteditor/effects/UnderlineEffect;-><init>()V

    sput-object v2, Lcom/onegravity/rteditor/effects/Effects;->UNDERLINE:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v3, Lcom/onegravity/rteditor/effects/StrikethroughEffect;

    invoke-direct {v3}, Lcom/onegravity/rteditor/effects/StrikethroughEffect;-><init>()V

    sput-object v3, Lcom/onegravity/rteditor/effects/Effects;->STRIKETHROUGH:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v4, Lcom/onegravity/rteditor/effects/SuperscriptEffect;

    invoke-direct {v4}, Lcom/onegravity/rteditor/effects/SuperscriptEffect;-><init>()V

    sput-object v4, Lcom/onegravity/rteditor/effects/Effects;->SUPERSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v5, Lcom/onegravity/rteditor/effects/SubscriptEffect;

    invoke-direct {v5}, Lcom/onegravity/rteditor/effects/SubscriptEffect;-><init>()V

    sput-object v5, Lcom/onegravity/rteditor/effects/Effects;->SUBSCRIPT:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v6, Lcom/onegravity/rteditor/effects/AbsoluteSizeEffect;

    invoke-direct {v6}, Lcom/onegravity/rteditor/effects/AbsoluteSizeEffect;-><init>()V

    sput-object v6, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v7, Lcom/onegravity/rteditor/effects/ForegroundColorEffect;

    invoke-direct {v7}, Lcom/onegravity/rteditor/effects/ForegroundColorEffect;-><init>()V

    sput-object v7, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v8, Lcom/onegravity/rteditor/effects/BackgroundColorEffect;

    invoke-direct {v8}, Lcom/onegravity/rteditor/effects/BackgroundColorEffect;-><init>()V

    sput-object v8, Lcom/onegravity/rteditor/effects/Effects;->BGCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v9, Lcom/onegravity/rteditor/effects/TypefaceEffect;

    invoke-direct {v9}, Lcom/onegravity/rteditor/effects/TypefaceEffect;-><init>()V

    sput-object v9, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v10, Lcom/onegravity/rteditor/effects/LinkEffect;

    invoke-direct {v10}, Lcom/onegravity/rteditor/effects/LinkEffect;-><init>()V

    sput-object v10, Lcom/onegravity/rteditor/effects/Effects;->LINK:Lcom/onegravity/rteditor/effects/Effect;

    new-instance v11, Lcom/onegravity/rteditor/effects/BulletEffect;

    invoke-direct {v11}, Lcom/onegravity/rteditor/effects/BulletEffect;-><init>()V

    sput-object v11, Lcom/onegravity/rteditor/effects/Effects;->BULLET:Lcom/onegravity/rteditor/effects/BulletEffect;

    new-instance v12, Lcom/onegravity/rteditor/effects/NumberEffect;

    invoke-direct {v12}, Lcom/onegravity/rteditor/effects/NumberEffect;-><init>()V

    sput-object v12, Lcom/onegravity/rteditor/effects/Effects;->NUMBER:Lcom/onegravity/rteditor/effects/NumberEffect;

    new-instance v13, Lcom/onegravity/rteditor/effects/IndentationEffect;

    invoke-direct {v13}, Lcom/onegravity/rteditor/effects/IndentationEffect;-><init>()V

    sput-object v13, Lcom/onegravity/rteditor/effects/Effects;->INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

    new-instance v14, Lcom/onegravity/rteditor/effects/AlignmentEffect;

    invoke-direct {v14}, Lcom/onegravity/rteditor/effects/AlignmentEffect;-><init>()V

    sput-object v14, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sput-object v15, Lcom/onegravity/rteditor/effects/Effects;->ALL_EFFECTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sput-object v15, Lcom/onegravity/rteditor/effects/Effects;->FORMATTING_EFFECTS:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Lcom/onegravity/rteditor/RTEditText;Lcom/sunia/HTREnginev2/xuk;[Lcom/onegravity/rteditor/effects/Effect;)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcom/sunia/HTREnginev2/xuk;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/utils/Selection;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs cleanupParagraphs(Lcom/onegravity/rteditor/RTEditText;[Lcom/onegravity/rteditor/effects/Effect;)V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    invoke-static {p0, v0, p1}, Lcom/onegravity/rteditor/effects/Effects;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/sunia/HTREnginev2/xuk;[Lcom/onegravity/rteditor/effects/Effect;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->INDENTATION:Lcom/onegravity/rteditor/effects/IndentationEffect;

    invoke-static {p0, v0, p1}, Lcom/onegravity/rteditor/effects/Effects;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/sunia/HTREnginev2/xuk;[Lcom/onegravity/rteditor/effects/Effect;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->BULLET:Lcom/onegravity/rteditor/effects/BulletEffect;

    invoke-static {p0, v0, p1}, Lcom/onegravity/rteditor/effects/Effects;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/sunia/HTREnginev2/xuk;[Lcom/onegravity/rteditor/effects/Effect;)V

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->NUMBER:Lcom/onegravity/rteditor/effects/NumberEffect;

    invoke-static {p0, v0, p1}, Lcom/onegravity/rteditor/effects/Effects;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/sunia/HTREnginev2/xuk;[Lcom/onegravity/rteditor/effects/Effect;)V

    return-void
.end method

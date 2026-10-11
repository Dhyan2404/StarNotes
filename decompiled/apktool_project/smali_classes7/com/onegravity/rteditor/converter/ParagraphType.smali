.class public final enum Lcom/onegravity/rteditor/converter/ParagraphType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/rteditor/converter/ParagraphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum ALIGNMENT_CENTER:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum ALIGNMENT_LEFT:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum ALIGNMENT_RIGHT:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public static final enum NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;


# instance fields
.field private final mEndTag:Ljava/lang/String;

.field private final mEndTagAddsLineBreak:Z

.field private final mIsAlignment:Z

.field private final mListEndTag:Ljava/lang/String;

.field private final mListStartTag:Ljava/lang/String;

.field private final mStartTag:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 8

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v1, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_LEFT:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v2, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_CENTER:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v3, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_RIGHT:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v4, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v5, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v6, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    sget-object v7, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

    filled-new-array/range {v0 .. v7}, [Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v9, Lcom/onegravity/rteditor/converter/ParagraphType;->NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v11, "ALIGNMENT_LEFT"

    const/4 v12, 0x1

    const-string v13, "<div align=\"left\">"

    const-string v14, "</div>"

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_LEFT:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v2, "ALIGNMENT_CENTER"

    const/4 v3, 0x2

    const-string v4, "<div align=\"center\">"

    const-string v5, "</div>"

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_CENTER:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v11, "ALIGNMENT_RIGHT"

    const/4 v12, 0x3

    const-string v13, "<div align=\"right\">"

    const-string v14, "</div>"

    const-string v15, ""

    const-string v16, ""

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_RIGHT:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v2, "BULLET"

    const/4 v3, 0x4

    const-string v4, "<ul>"

    const-string v5, "</ul>"

    const-string v6, "<li>"

    const-string v7, "</li>"

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v11, "NUMBERING"

    const/4 v12, 0x5

    const-string v13, "<ol>"

    const-string v14, "</ol>"

    const-string v15, "<li>"

    const-string v16, "</li>"

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v2, "INDENTATION_UL"

    const/4 v3, 0x6

    const-string v4, "<ul style=\'list-style-type:none;\'>"

    const-string v5, "</ul>"

    const-string v6, "<li style=\'list-style-type:none;\'>"

    const-string v7, "</li>"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    new-instance v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    const-string v11, "INDENTATION_OL"

    const/4 v12, 0x7

    const-string v13, "<ol style=\'list-style-type:none;\'>"

    const-string v14, "</ol>"

    const-string v15, "<li style=\'list-style-type:none;\'>"

    const-string v16, "</li>"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/onegravity/rteditor/converter/ParagraphType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-static {}, Lcom/onegravity/rteditor/converter/ParagraphType;->$values()[Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->$VALUES:[Lcom/onegravity/rteditor/converter/ParagraphType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mStartTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mEndTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mListStartTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mListEndTag:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mIsAlignment:Z

    iput-boolean p8, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mEndTagAddsLineBreak:Z

    return-void
.end method

.method public static getInstance(Landroid/text/style/ParagraphStyle;)Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 1

    instance-of v0, p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/AlignmentSpan;->getValue()Landroid/text/Layout$Alignment;

    move-result-object p0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_LEFT:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_CENTER:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->ALIGNMENT_RIGHT:Lcom/onegravity/rteditor/converter/ParagraphType;

    :goto_0
    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/onegravity/rteditor/spans/BulletSpan;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_1

    :cond_3
    instance-of v0, p0, Lcom/onegravity/rteditor/spans/NumberSpan;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_1

    :cond_4
    instance-of p0, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 1

    const-class v0, Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/converter/ParagraphType;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->$VALUES:[Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {v0}, [Lcom/onegravity/rteditor/converter/ParagraphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/rteditor/converter/ParagraphType;

    return-object v0
.end method


# virtual methods
.method public endTagAddsLineBreak()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mEndTagAddsLineBreak:Z

    return p0
.end method

.method public getEndTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mEndTag:Ljava/lang/String;

    return-object p0
.end method

.method public getListEndTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mListEndTag:Ljava/lang/String;

    return-object p0
.end method

.method public getListStartTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mListStartTag:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mStartTag:Ljava/lang/String;

    return-object p0
.end method

.method public isAlignment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/converter/ParagraphType;->mIsAlignment:Z

    return p0
.end method

.method public isBullet()Z
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndentation()Z
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNumbering()Z
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUndefined()Z
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

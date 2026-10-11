.class public Lcom/onegravity/rteditor/spans/AlignmentSpan;
.super Landroid/text/style/AlignmentSpan$Standard;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/spans/RTSpan;
.implements Lcom/onegravity/rteditor/spans/RTParagraphSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/AlignmentSpan$Standard;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Landroid/text/Layout$Alignment;",
        ">;",
        "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
        "Landroid/text/Layout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static sRTLMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/text/Layout$Alignment;",
            "Landroid/text/Layout$Alignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsRTL:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->sRTLMapping:Ljava/util/Map;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->sRTLMapping:Ljava/util/Map;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->sRTLMapping:Ljava/util/Map;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout$Alignment;Z)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->sRTLMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iput-boolean p2, p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->mIsRTL:Z

    return-void
.end method


# virtual methods
.method public createClone()Lcom/onegravity/rteditor/spans/AlignmentSpan;
    .locals 2

    .line 2
    new-instance v0, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/AlignmentSpan;->getValue()Landroid/text/Layout$Alignment;

    move-result-object v1

    iget-boolean p0, p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->mIsRTL:Z

    invoke-direct {v0, v1, p0}, Lcom/onegravity/rteditor/spans/AlignmentSpan;-><init>(Landroid/text/Layout$Alignment;Z)V

    return-object v0
.end method

.method public bridge synthetic createClone()Lcom/onegravity/rteditor/spans/RTParagraphSpan;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/AlignmentSpan;->createClone()Lcom/onegravity/rteditor/spans/AlignmentSpan;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Landroid/text/Layout$Alignment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/text/style/AlignmentSpan$Standard;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 3
    iget-boolean p0, p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->mIsRTL:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onegravity/rteditor/spans/AlignmentSpan;->sRTLMapping:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/text/Layout$Alignment;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/AlignmentSpan;->getValue()Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0
.end method

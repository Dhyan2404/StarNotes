.class Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TabStop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HSLFTabStopDecorator"
.end annotation


# instance fields
.field final tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    return-void
.end method


# virtual methods
.method public getPositionInPoints()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getPositionInPoints()D

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object p0

    return-object p0
.end method

.method public setPositionInPoints(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->setPositionInPoints(D)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    return-void
.end method

.method public setType(Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->tabStop:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->setType(Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    return-void
.end method

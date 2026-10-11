.class Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/LineDecoration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    return-object p0
.end method

.method public getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object p0

    return-object p0
.end method

.method public getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    return-object p0
.end method

.method public getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    return-object p0
.end method

.method public getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object p0

    return-object p0
.end method

.method public getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    return-object p0
.end method

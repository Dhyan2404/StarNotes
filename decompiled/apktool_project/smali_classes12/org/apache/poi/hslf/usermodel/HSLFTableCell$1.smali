.class Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/StrokeStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

.field final synthetic val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

.field final synthetic val$width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFTableCell;Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$width:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object p0

    return-object p0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object p0

    return-object p0
.end method

.method public getLineWidth()D
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$width:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->this$0:Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

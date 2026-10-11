.class public Lnet/sf/saxon/functions/AnalyzeStringFn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/RegexMatchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AnalyzeStringFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public final b:Lnet/sf/saxon/functions/AnalyzeStringFn$c;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/ComplexContentOutputter;Lnet/sf/saxon/functions/AnalyzeStringFn$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    iput-object p2, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->b:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public onGroupEnd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    return-void
.end method

.method public onGroupStart(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->b:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    iget-object v2, v1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->d:Lnet/sf/saxon/om/NodeName;

    iget-object v1, v1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->i:Lnet/sf/saxon/type/SchemaType;

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v5, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->b:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    iget-object v6, v0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->e:Lnet/sf/saxon/om/NodeName;

    iget-object v7, v0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->j:Lnet/sf/saxon/type/SimpleType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn$b;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/b8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b8h;->e:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b8h;->e:Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->c(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V

    return-void
.end method

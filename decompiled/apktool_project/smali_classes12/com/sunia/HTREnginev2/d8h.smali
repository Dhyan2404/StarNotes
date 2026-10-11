.class public final synthetic Lcom/sunia/HTREnginev2/d8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d8h;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8h;->e:Ljava/lang/Integer;

    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->a(Ljava/lang/Integer;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

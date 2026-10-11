.class public final synthetic Lcom/sunia/HTREnginev2/gif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gif;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gif;->e:Ljava/util/List;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->b(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/c5i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/text/AttributedString;


# direct methods
.method public synthetic constructor <init>(Ljava/text/AttributedString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c5i;->e:Ljava/text/AttributedString;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c5i;->e:Ljava/text/AttributedString;

    check-cast p1, Ljava/awt/font/TextAttribute;

    invoke-virtual {p0, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

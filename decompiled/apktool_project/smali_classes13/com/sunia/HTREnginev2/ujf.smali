.class public final synthetic Lcom/sunia/HTREnginev2/ujf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/text/AttributedCharacterIterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ujf;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ujf;->f:Ljava/text/AttributedCharacterIterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ujf;->e:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ujf;->f:Ljava/text/AttributedCharacterIterator;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->f(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

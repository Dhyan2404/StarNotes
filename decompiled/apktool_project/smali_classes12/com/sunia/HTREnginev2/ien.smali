.class public final synthetic Lcom/sunia/HTREnginev2/ien;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ien;->e:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ien;->e:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->a(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

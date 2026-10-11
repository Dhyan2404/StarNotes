.class public final synthetic Lcom/sunia/HTREnginev2/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/as;->a:Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    iput p2, p0, Lcom/sunia/HTREnginev2/as;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/as;->a:Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    iget p0, p0, Lcom/sunia/HTREnginev2/as;->b:I

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->a(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;I)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/sunia/HTREnginev2/wdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/model/textproperties/TextPFException9;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/model/textproperties/TextPFException9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wdn;->e:Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wdn;->e:Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;->getAutoNumberScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object p0

    return-object p0
.end method

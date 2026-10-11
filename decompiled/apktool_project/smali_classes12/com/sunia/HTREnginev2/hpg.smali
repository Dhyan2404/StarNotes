.class public final synthetic Lcom/sunia/HTREnginev2/hpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/FontEmbeddedData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/FontEmbeddedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hpg;->e:Lorg/apache/poi/hslf/record/FontEmbeddedData;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpg;->e:Lorg/apache/poi/hslf/record/FontEmbeddedData;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object p0

    return-object p0
.end method

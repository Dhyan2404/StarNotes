.class public final synthetic Lcom/sunia/HTREnginev2/ulo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ulo;->e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ulo;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ulo;->e:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ulo;->f:Ljava/util/Map;

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->j(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V

    return-void
.end method

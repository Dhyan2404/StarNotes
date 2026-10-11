.class public final synthetic Lcom/sunia/HTREnginev2/vqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vqo;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vqo;->e:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->a(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method

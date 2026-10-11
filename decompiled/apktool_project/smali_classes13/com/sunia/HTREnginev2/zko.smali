.class public final synthetic Lcom/sunia/HTREnginev2/zko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    move-result-object p0

    return-object p0
.end method

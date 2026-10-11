.class public final synthetic Lorg/apache/poi/ss/usermodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/WorkbookFactory$ProviderMethod;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/WorkbookProvider;->create()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

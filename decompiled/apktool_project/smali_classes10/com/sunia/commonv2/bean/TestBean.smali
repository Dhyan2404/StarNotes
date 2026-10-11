.class public Lcom/sunia/commonv2/bean/TestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private configBean:Lcom/sunia/commonv2/bean/ConfigBean;

.field private index:I

.field private pointFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/commonv2/bean/TestBean;->index:I

    iput-object p2, p0, Lcom/sunia/commonv2/bean/TestBean;->configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    iput-object p3, p0, Lcom/sunia/commonv2/bean/TestBean;->pointFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfigBean()Lcom/sunia/commonv2/bean/ConfigBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/TestBean;->configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/TestBean;->index:I

    return p0
.end method

.method public getPointFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/TestBean;->pointFile:Ljava/lang/String;

    return-object p0
.end method

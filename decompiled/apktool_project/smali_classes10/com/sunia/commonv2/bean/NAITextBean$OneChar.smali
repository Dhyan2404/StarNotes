.class public Lcom/sunia/commonv2/bean/NAITextBean$OneChar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/NAITextBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneChar"
.end annotation


# instance fields
.field private boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "boundingbox"
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAITextBean$OneChar;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAITextBean$OneChar;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setBoundingBox(Lcom/sunia/commonv2/bean/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/NAITextBean$OneChar;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/NAITextBean$OneChar;->text:Ljava/lang/String;

    return-void
.end method

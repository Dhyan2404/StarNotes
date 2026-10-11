.class public Lnet/sf/saxon/resource/TypedStreamSource;
.super Ljavax/xml/transform/stream/StreamSource;
.source "SourceFile"


# instance fields
.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/transform/stream/StreamSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/TypedStreamSource;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/resource/TypedStreamSource;->i:Ljava/lang/String;

    return-void
.end method

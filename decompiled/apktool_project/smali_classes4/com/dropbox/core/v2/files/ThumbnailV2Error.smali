.class public final Lcom/dropbox/core/v2/files/ThumbnailV2Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;,
        Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;
    }
.end annotation


# static fields
.field public static final ACCESS_DENIED:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

.field public static final CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

.field public static final OTHER:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

.field public static final UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

.field public static final UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailV2Error;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

.field public b:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->ACCESS_DENIED:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->NOT_FOUND:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->OTHER:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->OTHER:Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/ThumbnailV2Error;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->c(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailV2Error;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/ThumbnailV2Error;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailV2Error;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/ThumbnailV2Error$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->b:Lcom/dropbox/core/v2/files/LookupError;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAccessDenied()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConversionError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotFound()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->OTHER:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPath()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnsupportedExtension()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnsupportedImage()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ThumbnailV2Error;->a:Lcom/dropbox/core/v2/files/ThumbnailV2Error$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;->b:Lcom/dropbox/core/v2/files/ThumbnailV2Error$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

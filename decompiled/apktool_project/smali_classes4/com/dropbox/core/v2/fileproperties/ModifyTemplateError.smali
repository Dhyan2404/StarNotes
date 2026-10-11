.class public final Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
    }
.end annotation


# static fields
.field public static final CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;


# instance fields
.field public a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->c(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->b:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public isConflictingPropertyNames()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestrictedContent()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTemplateAttributeTooLarge()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTemplateNotFound()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyProperties()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyTemplates()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->a:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

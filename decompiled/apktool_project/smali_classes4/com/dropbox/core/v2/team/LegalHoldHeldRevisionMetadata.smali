.class public Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata$a;
    }
.end annotation


# instance fields
.field protected final authorEmail:Ljava/lang/String;

.field protected final authorMemberId:Ljava/lang/String;

.field protected final authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field protected final contentHash:Ljava/lang/String;

.field protected final fileType:Ljava/lang/String;

.field protected final newFilename:Ljava/lang/String;

.field protected final originalFilePath:Ljava/lang/String;

.field protected final originalRevisionId:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/team/TeamMemberStatus;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->newFilename:Ljava/lang/String;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_d

    const-string p1, "[0-9a-f]+"

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object p2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalRevisionId:Ljava/lang/String;

    if-eqz p3, :cond_b

    const-string p1, "(/(.|[\\r\\n])*)?"

    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    iput-object p3, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalFilePath:Ljava/lang/String;

    if-eqz p4, :cond_9

    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->serverModified:Ljava/util/Date;

    if-eqz p5, :cond_8

    iput-object p5, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberId:Ljava/lang/String;

    if-eqz p6, :cond_7

    iput-object p6, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eqz p7, :cond_6

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xff

    if-gt p1, p2, :cond_5

    const-string p1, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {p1, p7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p7, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorEmail:Ljava/lang/String;

    if-eqz p8, :cond_3

    iput-object p8, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->fileType:Ljava/lang/String;

    iput-wide p9, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->size:J

    if-eqz p11, :cond_2

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x40

    if-lt p1, p2, :cond_1

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p2, :cond_0

    iput-object p11, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->contentHash:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'contentHash\' is longer than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'contentHash\' is shorter than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'contentHash\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'fileType\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'authorEmail\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'authorEmail\' is longer than 255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'authorEmail\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'authorMemberStatus\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'authorMemberId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'serverModified\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'originalFilePath\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'originalFilePath\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'originalRevisionId\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'originalRevisionId\' is shorter than 9"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'originalRevisionId\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'newFilename\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->newFilename:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->newFilename:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalRevisionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalRevisionId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalFilePath:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->serverModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->serverModified:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v2, v3, :cond_7

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->fileType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->fileType:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->size:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->contentHash:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->contentHash:Ljava/lang/String;

    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    move v0, v1

    :cond_b
    :goto_0
    return v0

    :cond_c
    return v1
.end method

.method public getAuthorEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthorMemberId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthorMemberStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object p0
.end method

.method public getContentHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->contentHash:Ljava/lang/String;

    return-object p0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->fileType:Ljava/lang/String;

    return-object p0
.end method

.method public getNewFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->newFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalRevisionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalRevisionId:Ljava/lang/String;

    return-object p0
.end method

.method public getServerModified()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->serverModified:Ljava/util/Date;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->newFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalRevisionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->originalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->serverModified:Ljava/util/Date;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorMemberStatus:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->authorEmail:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->fileType:Ljava/lang/String;

    iget-wide v8, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->size:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata;->contentHash:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata$a;->b:Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata$a;->b:Lcom/dropbox/core/v2/team/LegalHoldHeldRevisionMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

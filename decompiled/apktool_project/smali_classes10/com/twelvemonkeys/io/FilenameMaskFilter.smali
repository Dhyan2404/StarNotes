.class public Lcom/twelvemonkeys/io/FilenameMaskFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FilenameMaskFilter;->setFilenameMasksForInclusion([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FilenameMaskFilter;->setFilenameMasksForExclusion([Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FilenameMaskFilter;->setFilenameMasksForInclusion([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/io/FilenameMaskFilter;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FilenameMaskFilter;->setFilenameMasksForExclusion([Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FilenameMaskFilter;->setFilenameMasksForInclusion([Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    iget-boolean p1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    array-length p1, p0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    invoke-direct {v4, v3}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->parseString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    array-length p1, p0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    new-instance v4, Lcom/twelvemonkeys/util/regex/WildcardStringParser;

    invoke-direct {v4, v3}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/twelvemonkeys/util/regex/WildcardStringParser;->parseString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public getFilenameMasksForExclusion()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getFilenameMasksForInclusion()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public setFilenameMasksForExclusion([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    return-void
.end method

.method public setFilenameMasksForInclusion([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->g:Z

    const-string v2, "\", \""

    const-string v3, "\""

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p0, "No filename masks set - property filenameMasksForInclusion is null!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filename mask(s) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->e:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    if-nez v1, :cond_2

    const-string p0, "No filename masks set - property filenameMasksForExclusion is null!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exclusion filename mask(s) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twelvemonkeys/io/FilenameMaskFilter;->f:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

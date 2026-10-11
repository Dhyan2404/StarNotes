.class public abstract Lnet/sf/saxon/regex/Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/regex/Operation$ForceProgressIterator;
    }
.end annotation


# static fields
.field protected static final MATCHES_ZLS_ANYWHERE:I = 0x7

.field protected static final MATCHES_ZLS_AT_END:I = 0x2

.field protected static final MATCHES_ZLS_AT_START:I = 0x1

.field protected static final MATCHES_ZLS_NEVER:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsCapturingExpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract display()Ljava/lang/String;
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getComplement()Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMinimumMatchLength()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public abstract iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
.end method

.method public abstract matchesEmptyString()I
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 0

    return-object p0
.end method

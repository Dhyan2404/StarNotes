.class public Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# static fields
.field public static final a:Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

.field public static final b:Lnet/sf/saxon/regex/charclass/InverseCharacterClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    invoke-direct {v0}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;-><init>()V

    sput-object v0, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->a:Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->b:Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComplement()Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 1

    sget-object v0, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->b:Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    return-object v0
.end method

.method public static getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;
    .locals 1

    sget-object v0, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->a:Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    return-object v0
.end method


# virtual methods
.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public test(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

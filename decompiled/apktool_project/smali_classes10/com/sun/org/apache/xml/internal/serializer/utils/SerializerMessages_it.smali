.class public Lcom/sun/org/apache/xml/internal/serializer/utils/SerializerMessages_it;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 2

    const/16 p0, 0x1c

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "La classe serializer \'\'{0}\'\' non implementa org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Risorsa [ {0} ] non trovata.\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Impossibile caricare la risorsa [ {0} ]: {1} \n {2} \n {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Dimensione buffer <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Rilevato surrogato UTF-16 non valido: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "ER_OIERROR"

    const-string v1, "Errore IO"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Impossibile aggiungere l\'\'attributo {0} dopo i nodi secondari o prima che sia prodotto un elemento. L\'\'attributo verr\u00e0 ignorato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "Lo spazio nomi per il prefisso \'\'{0}\'\' non \u00e8 stato dichiarato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Dichiarazione dello spazio nome \'\'{0}\'\'=\'\'{1}\'\' al di fuori dell\'\'elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Impossibile caricare \'\'{0}\'\' (verificare CLASSPATH); verranno utilizzati i valori predefiniti "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Impossibile caricare il file delle propriet\u00e0 \'\'{0}\'\' per il metodo di emissione \'\'{1}\'\' (verificare CLASSPATH)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Numero di porta non valido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "La porta non pu\u00f2 essere impostata se l\'host \u00e8 nullo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Host non \u00e8 un\'indirizzo corretto"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Lo schema non \u00e8 conforme."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Impossibile impostare lo schema da una stringa nulla"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Il percorso contiene sequenza di escape non valida"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Il percorso contiene un carattere non valido: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Il frammento contiene un carattere non valido"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Il frammento non pu\u00f2 essere impostato se il percorso \u00e8 nullo"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Il frammento pu\u00f2 essere impostato solo per un URI generico"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Nessuno schema trovato nell\'\'URI: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Impossibile inizializzare l\'URI con i parametri vuoti"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Il frammento non pu\u00f2 essere specificato sia nel percorso che nel frammento"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "La stringa di interrogazione non pu\u00f2 essere specificata nella stringa di interrogazione e percorso."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "La porta non pu\u00f2 essere specificata se l\'host non \u00e8 specificato"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Userinfo non pu\u00f2 essere specificato se l\'host non \u00e8 specificato"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Lo schema \u00e8 obbligatorio."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    return-object p0
.end method

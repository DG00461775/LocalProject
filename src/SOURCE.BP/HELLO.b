* @ValidationCode : MjotNzU5OTE4NTU2OkNwMTI1MjoxNTc3NDQwMzcwODQ1OkRHMDA0NjE3NzU6LTE6LTE6MDowOmZhbHNlOk4vQTpSMTlfU1A2LjA6LTE6LTE=
* @ValidationInfo : Timestamp         : 27 Dec 2019 15:22:50
* @ValidationInfo : Encoding          : Cp1252
* @ValidationInfo : User Name         : DG00461775
* @ValidationInfo : Nb tests success  : N/A
* @ValidationInfo : Nb tests failure  : N/A
* @ValidationInfo : Rating            : N/A
* @ValidationInfo : Coverage          : N/A
* @ValidationInfo : Strict flag       : N/A
* @ValidationInfo : Bypass GateKeeper : false
* @ValidationInfo : Compiler Version  : R19_SP6.0
$PACKAGE SOURCE.BP
SUBROUTINE HELLO
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
*-----------------------------------------------------------------------------

    CRT "HELLO WORLD"

    FN.FBNK.ACCOUNT = 'F.FBNK.ACCOUNT'
    F.FBNK.ACCOUNT = ''
    CALL OPF(FN.FBNK.ACCOUNT,F.FBNK.ACCOUNT)

    SELECT.STATEMENT = 'SELECT ':FN.FBNK.ACCOUNT
    FBNK.ACCOUNT.LIST = ''
    LIST.NAME = ''
    SELECTED = ''
    SYSTEM.RETURN.CODE = ''
    CALL EB.READLIST(SELECT.STATEMENT,FBNK.ACCOUNT.LIST,LIST.NAME,SELECTED,SYSTEM.RETURN.CODE)

    R.FBNK.ACCOUNT = ''
    YERR = ''
    CALL F.READ(FN.FBNK.ACCOUNT,FBNK.ACCOUNT.ID,R.FBNK.ACCOUNT,F.FBNK.ACCOUNT,YERR)

END

create or replace PACKAGE acr_ap_supr_pkg AS
 
/*****************************************************************************************************************************************

* Script Name: acr_ap_supr_ALL_PKG

* Associated Release :AECCAR Data Conversion project for AP(Account Payables) Module

*=========== ======== ==================================================================================================================
*
*
* Change History

* Version   date                        Changed By                                   Comments

*========  ==============         ==================================    =====================================

* 1.0      27-MAY-2024                  Sandhya Tenugu                              Intial package

*

*---------------------------------------****---------------------------------------------------------------------------------------------------*/
    TYPE T_ERRORS IS TABLE OF acr_ap_supr_TRFM%ROWTYPE INDEX BY BINARY_INTEGER;   
    PROCEDURE acr_ap_supr_main_val (

        p_job_id         IN VARCHAR2,

        p_component_id   IN VARCHAR2,

        p_sub_component_id   IN VARCHAR2,

        p_version_id     IN NUMBER,

        p_return_code    OUT VARCHAR2,

        p_return_message OUT VARCHAR2

    );

    PROCEDURE acr_ap_supr_fbdi_exp (

        p_job_id         IN VARCHAR2,
        p_component_id   IN  VARCHAR2,
        p_sub_component_id IN VARCHAR2,
        p_return_code    OUT VARCHAR2,
        p_return_message OUT VARCHAR2
    );

END acr_ap_supr_pkg;
/
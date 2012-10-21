<?php


class FeatureContext extends Behat\MinkExtension\Context\MinkContext
{
    
/**
     * @Given /^I saw page loaded$/
     */
    public function iSawPageLoaded()
    {
        $this->getSession()->wait("5000", "document.getElementById('pricing-table')");
    }



}

